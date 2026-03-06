import mongoose from "mongoose";

const MONGODB_URI = process.env.MONGODB_URI!;

if (!MONGODB_URI) {
  throw new Error("Please define the MONGODB_URI environment variable in .env.local");
}

interface MongooseCache {
  conn: typeof mongoose | null;
  promise: Promise<typeof mongoose> | null;
}

declare global {
  // eslint-disable-next-line no-var
  var mongoose: MongooseCache | undefined;
}

const cached: MongooseCache = global.mongoose || { conn: null, promise: null };

if (!global.mongoose) {
  global.mongoose = cached;
}

async function dbConnect(): Promise<typeof mongoose> {
  if (cached.conn) {
    return cached.conn;
  }

  if (!cached.promise) {
    const opts = {
      bufferCommands: false,
      // Vercel serverless: many short-lived lambda instances can open connections
      // simultaneously. Cap each instance's pool to 5 to avoid exhausting the
      // Atlas connection limit (M0 free = 500 total, M2/M5 shared = 500).
      // A single serverless function rarely needs more than 1-2 concurrent sockets.
      maxPoolSize: 5,
      // Close idle connections after 30 s — reduces Atlas pressure during quiet periods.
      serverSelectionTimeoutMS: 5000,
      socketTimeoutMS: 30000,
    };

    cached.promise = mongoose.connect(MONGODB_URI, opts).then((mongoose) => {
      return mongoose;
    });
  }

  cached.conn = await cached.promise;
  return cached.conn;
}

export default dbConnect;
