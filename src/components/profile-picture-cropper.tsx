"use client";

import { useState, useCallback, useRef } from "react";
import Cropper, { Area } from "react-easy-crop";
import { Dialog, DialogContent, DialogHeader, DialogTitle } from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Slider } from "@/components/ui/slider";

interface ProfilePictureCropperProps {
  onImageSave: (croppedImage: string) => void;
  savedImage: string | null;
}

async function getCroppedImg(imageSrc: string, pixelCrop: Area): Promise<string> {
  const image = new Image();
  image.src = imageSrc;
  await new Promise((resolve) => {
    image.onload = resolve;
  });

  const canvas = document.createElement("canvas");
  canvas.width = pixelCrop.width;
  canvas.height = pixelCrop.height;
  const ctx = canvas.getContext("2d")!;

  ctx.drawImage(
    image,
    pixelCrop.x,
    pixelCrop.y,
    pixelCrop.width,
    pixelCrop.height,
    0,
    0,
    pixelCrop.width,
    pixelCrop.height
  );

  return canvas.toDataURL("image/jpeg", 0.9);
}

export default function ProfilePictureCropper({ onImageSave, savedImage }: ProfilePictureCropperProps) {
  const [imageSrc, setImageSrc] = useState<string | null>(null);
  const [crop, setCrop] = useState({ x: 0, y: 0 });
  const [zoom, setZoom] = useState(1);
  const [croppedAreaPixels, setCroppedAreaPixels] = useState<Area | null>(null);
  const [croppedPreview, setCroppedPreview] = useState<string | null>(null);
  const [showCropModal, setShowCropModal] = useState(false);
  const [showPreviewModal, setShowPreviewModal] = useState(false);
  const fileInputRef = useRef<HTMLInputElement>(null);

  const onCropComplete = useCallback((_: Area, croppedPixels: Area) => {
    setCroppedAreaPixels(croppedPixels);
  }, []);

  const triggerFileUpload = () => {
    fileInputRef.current?.click();
  };

  const handleFileSelect = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;

    const reader = new FileReader();
    reader.onload = () => {
      setImageSrc(reader.result as string);
      setCrop({ x: 0, y: 0 });
      setZoom(1);
      setCroppedPreview(null);
      setShowCropModal(true);
    };
    reader.readAsDataURL(file);
    e.target.value = "";
  };

  const handleCrop = async () => {
    if (!imageSrc || !croppedAreaPixels) return;
    const cropped = await getCroppedImg(imageSrc, croppedAreaPixels);
    setCroppedPreview(cropped);
    setShowCropModal(false);
    setShowPreviewModal(true);
  };

  const handleSaveImage = () => {
    if (croppedPreview) {
      onImageSave(croppedPreview);
    }
    setShowPreviewModal(false);
    resetState();
  };

  const handleCancelCrop = () => {
    setShowCropModal(false);
    resetState();
  };

  const handleCancelPreview = () => {
    setShowPreviewModal(false);
    resetState();
  };

  const resetState = () => {
    setImageSrc(null);
    setCroppedPreview(null);
    setCrop({ x: 0, y: 0 });
    setZoom(1);
    setCroppedAreaPixels(null);
  };

  return (
    <div className="bg-[#EEF9FF] rounded p-6 space-y-4">
      {/* Hidden File Input */}
      <input
        ref={fileInputRef}
        type="file"
        accept="image/*"
        className="hidden"
        onChange={handleFileSelect}
      />

      {/* Section Title */}
      <h3 className="text-sm font-bold text-[#0C0E3B] uppercase tracking-wide">
        PROFILE PICTURE <span className="text-red-500 font-normal">(required)</span>
      </h3>

      {/* Instructions */}
      <div className="space-y-1">
        <p className="text-sm text-[#0C0E3B]/70">
          Please upload a close up headshot for your licence photo.
        </p>
        <p className="text-sm text-[#0C0E3B] font-bold">
          Click the link below to upload your profile picture. You can then use the slider below the image to
          zoom in or out. You can use your mouse to click and reposition the image.
        </p>
      </div>

      {/* Image Display Area */}
      <div className="flex items-start gap-8 flex-wrap">
        {/* Uploaded Image / Placeholder - Clickable */}
        <button
          type="button"
          onClick={triggerFileUpload}
          className="w-[180px] h-[220px] bg-gray-200 rounded overflow-hidden flex items-center justify-center border-2 border-gray-300 hover:border-gray-400 transition-colors flex-shrink-0"
        >
          {savedImage ? (
            <img src={savedImage} alt="Profile" className="w-full h-full object-cover" />
          ) : (
            <img src="/user-image.jpg" alt="Default profile" className="w-full h-full object-cover opacity-60" />
          )}
        </button>

        {/* Example Good/Bad Photos */}
        <div className="flex items-center gap-4 pt-8">
          <img src="/correct-licence-image.jpg" alt="Correct example" className="w-[143px] h-auto rounded" />
          <img src="/wrong-licence-image.jpg" alt="Wrong example" className="w-[175px] h-auto rounded" />
        </div>
      </div>

      {/* Upload Link - Clickable */}
      <button
        type="button"
        onClick={triggerFileUpload}
        className="text-sm text-[#209BD6] hover:text-white underline transition-colors"
      >
        Click here to upload your profile picture
      </button>

      {/* Crop Modal */}
      <Dialog open={showCropModal} onOpenChange={(open) => !open && handleCancelCrop()}>
        <DialogContent className="sm:max-w-[600px] p-0 gap-0 overflow-hidden">
          <DialogHeader className="px-6 py-4 border-b">
            <DialogTitle className="text-base font-medium text-gray-600 uppercase tracking-wide">
              PROFILE PICTURE
            </DialogTitle>
          </DialogHeader>
          <div className="relative w-full h-[400px] bg-gray-100">
            {imageSrc && (
              <Cropper
                image={imageSrc}
                crop={crop}
                zoom={zoom}
                aspect={3 / 4}
                onCropChange={setCrop}
                onCropComplete={onCropComplete}
                onZoomChange={setZoom}
                cropShape="rect"
                showGrid={false}
                style={{
                  containerStyle: { background: "#f3f4f6" },
                  cropAreaStyle: { border: "2px solid #fff", boxShadow: "0 0 0 9999px rgba(0,0,0,0.3)" },
                }}
              />
            )}
          </div>
          {/* Zoom Slider */}
          <div className="px-12 py-4 border-t bg-white">
            <Slider
              value={[zoom]}
              min={1}
              max={3}
              step={0.01}
              onValueChange={(val) => setZoom(val[0])}
              className="w-full"
            />
          </div>
          {/* Actions */}
          <div className="flex items-center justify-end gap-3 px-6 py-4 border-t bg-white">
            <Button
              type="button"
              onClick={handleCrop}
              className="bg-[#209BD6] hover:bg-[#1a86ba] text-white px-6"
            >
              Crop
            </Button>
            <button
              type="button"
              onClick={handleCancelCrop}
              className="text-sm text-gray-500 hover:text-gray-700 transition-colors px-4 py-2"
            >
              Cancel
            </button>
          </div>
        </DialogContent>
      </Dialog>

      {/* Preview / Save Modal */}
      <Dialog open={showPreviewModal} onOpenChange={(open) => !open && handleCancelPreview()}>
        <DialogContent className="sm:max-w-[600px] p-0 gap-0 overflow-hidden">
          <DialogHeader className="px-6 py-4 border-b">
            <DialogTitle className="text-base font-medium text-gray-600 uppercase tracking-wide">
              PROFILE PICTURE
            </DialogTitle>
          </DialogHeader>
          <div className="flex items-center justify-center p-8 bg-gray-50 min-h-[350px]">
            {croppedPreview && (
              <img
                src={croppedPreview}
                alt="Cropped preview"
                className="max-h-[300px] max-w-full object-contain rounded shadow-sm"
              />
            )}
          </div>
          {/* Actions */}
          <div className="flex items-center justify-end gap-3 px-6 py-4 border-t bg-white">
            <Button
              type="button"
              onClick={handleSaveImage}
              className="bg-[#209BD6] hover:bg-[#1a86ba] text-white px-6"
            >
              Save Image
            </Button>
            <button
              type="button"
              onClick={handleCancelPreview}
              className="text-sm text-gray-500 hover:text-gray-700 transition-colors px-4 py-2"
            >
              Cancel
            </button>
          </div>
        </DialogContent>
      </Dialog>
    </div>
  );
}
