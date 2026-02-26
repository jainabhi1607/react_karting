# Mobile App

This folder contains the mobile app code (React Native).

## Structure

```
mobile/
├── screens/       # Screen components (Login, Home, etc.)
├── components/    # Reusable mobile components
├── navigation/    # Navigation configuration
└── hooks/         # Mobile-specific hooks
```

Shared code (types, lib utilities, hooks) lives in the parent `src/` folder and can be imported by both web and mobile.
