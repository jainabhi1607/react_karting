"use client";

import { useState } from "react";
import Image from "next/image";
import Link from "next/link";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Button } from "@/components/ui/button";
import { Checkbox } from "@/components/ui/checkbox";
import { RadioGroup, RadioGroupItem } from "@/components/ui/radio-group";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import ProfilePictureCropper from "@/components/profile-picture-cropper";

const TITLE_OPTIONS = ["Mr", "Mrs", "Ms", "Miss", "Dr", "Master"];

const STATE_OPTIONS = [
  { value: "1", label: "VIC" },
  { value: "2", label: "NSW" },
  { value: "3", label: "WA" },
  { value: "4", label: "QLD" },
  { value: "5", label: "NT" },
  { value: "6", label: "ACT" },
  { value: "7", label: "TAS" },
  { value: "8", label: "SA" },
  { value: "10", label: "New Zealand" },
  { value: "11", label: "International" },
];

const COUNTRY_OPTIONS = [
  { value: "australia", label: "Australia" },
  { value: "new_zealand", label: "New Zealand" },
  { value: "international", label: "International" },
];

const RELATIONSHIP_OPTIONS = [
  "Parent",
  "Guardian",
  "Spouse",
  "Partner",
  "Sibling",
  "Friend",
  "Other",
];

const inputClasses = "h-11 w-full bg-[#4a6a8a]/50 border-0 text-white placeholder:text-white/40 rounded focus-visible:ring-[#209BD6] focus-visible:ring-offset-0";
const selectTriggerClasses = "h-11 w-full bg-[#4a6a8a]/50 border-0 text-white rounded focus:ring-[#209BD6]";
const labelClasses = "text-sm text-white font-bold";

export default function RegisterPage() {
  const [formData, setFormData] = useState({
    title: "",
    firstName: "",
    middleName: "",
    lastName: "",
    gender: "",
    email: "",
    password: "",
    confirmPassword: "",
    dateOfBirth: "",
    addressLine1: "",
    addressLine2: "",
    suburb: "",
    postcode: "",
    state: "",
    country: "australia",
    mailingAddressSame: true,
    mobilePhone: "",
    homePhone: "",
    emergencyContactPerson: "",
    emergencyContactMobile: "",
    emergencyContactHomePhone: "",
    relationship: "",
  });

  const [profileImage, setProfileImage] = useState<string | null>(null);

  const updateField = (field: string, value: string | boolean) => {
    setFormData((prev) => ({ ...prev, [field]: value }));
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    // TODO: Implement registration logic
    console.log({ ...formData, profileImage });
  };

  const RequiredTag = () => (
    <span className="text-red-400 text-xs font-normal ml-1">(required)</span>
  );

  return (
    <div
      className="min-h-screen pb-12"
      style={{ background: "linear-gradient(180deg, #0C0E3B 0%, #209BD6 100%)" }}
    >
      {/* Logo */}
      <div className="flex justify-center pt-8 pb-6">
        <Image
          src="/logo.png"
          alt="Karting"
          width={250}
          height={80}
          priority
          className="object-contain h-auto w-[250px]"
        />
      </div>

      {/* Header Card - White BG */}
      <div className="w-full max-w-[900px] mx-auto px-4 mb-10">
        <div className="bg-white rounded-lg py-8 px-6 text-center shadow-sm">
          <h1 className="text-2xl font-bold text-[#0C0E3B] italic mb-2">
            Create your Karting Account
          </h1>
          <p className="text-sm text-[#0C0E3B]/70 mb-1">
            Complete your details below to create your Karting online account.
          </p>
          <p className="text-sm text-[#0C0E3B]/70">
            Your Karting online account will allow you to update your details, apply for licences and much more.{" "}
            <Link href="/support" className="text-[#209BD6] hover:underline transition-colors">
              Support
            </Link>
          </p>
        </div>
      </div>

      {/* Registration Form */}
      <form onSubmit={handleSubmit} className="w-full max-w-[900px] mx-auto px-4 space-y-8">

        {/* ─── PERSONAL DETAILS ─── */}
        <section className="space-y-4">
          <h2 className="text-base font-bold text-white uppercase tracking-wide">
            Personal Details
          </h2>

          {/* Title */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Title <RequiredTag />
            </Label>
            <Select value={formData.title} onValueChange={(val) => updateField("title", val)}>
              <SelectTrigger className={selectTriggerClasses}>
                <SelectValue placeholder="Select" />
              </SelectTrigger>
              <SelectContent>
                {TITLE_OPTIONS.map((t) => (
                  <SelectItem key={t} value={t.toLowerCase()}>{t}</SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>

          {/* First Name */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              First Name <RequiredTag />
            </Label>
            <Input
              value={formData.firstName}
              onChange={(e) => updateField("firstName", e.target.value)}
              className={inputClasses}
              required
            />
          </div>

          {/* Middle Name */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>Middle Name</Label>
            <Input
              value={formData.middleName}
              onChange={(e) => updateField("middleName", e.target.value)}
              className={inputClasses}
            />
          </div>

          {/* Last Name */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Last Name <RequiredTag />
            </Label>
            <Input
              value={formData.lastName}
              onChange={(e) => updateField("lastName", e.target.value)}
              className={inputClasses}
              required
            />
          </div>

          {/* Gender */}
          <div className="space-y-2">
            <Label className={labelClasses}>
              Gender <RequiredTag />
            </Label>
            <RadioGroup
              value={formData.gender}
              onValueChange={(val) => updateField("gender", val)}
              className="flex items-center gap-6"
            >
              {["Male", "Female", "Other"].map((g) => (
                <div key={g} className="flex items-center gap-2">
                  <RadioGroupItem
                    value={g.toLowerCase()}
                    id={`gender-${g.toLowerCase()}`}
                    className="border-white/60 text-white data-[state=checked]:bg-white"
                  />
                  <Label
                    htmlFor={`gender-${g.toLowerCase()}`}
                    className="text-sm text-white font-normal"
                  >
                    {g}
                  </Label>
                </div>
              ))}
            </RadioGroup>
          </div>

          {/* Email Address */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Email Address <RequiredTag />
            </Label>
            <Input
              type="email"
              value={formData.email}
              onChange={(e) => updateField("email", e.target.value)}
              className={inputClasses}
              required
            />
          </div>

          {/* Password Hint */}
          <div className="bg-[#4a6a8a]/40 rounded p-4">
            <p className="text-sm text-[#7dd3fc]">
              Please ensure your password contains at least 9 characters, including at least one number
              and one uppercase letter.
            </p>
          </div>

          {/* Account Password */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Account Password <RequiredTag />
            </Label>
            <Input
              type="password"
              value={formData.password}
              onChange={(e) => updateField("password", e.target.value)}
              className={inputClasses}
              required
            />
          </div>

          {/* Confirm Password */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Confirm Password <RequiredTag />
            </Label>
            <Input
              type="password"
              value={formData.confirmPassword}
              onChange={(e) => updateField("confirmPassword", e.target.value)}
              className={inputClasses}
              required
            />
          </div>

          {/* Family Link Notice */}
          <div className="bg-[#4a6a8a]/40 rounded p-4">
            <p className="text-sm text-white/80">
              To create account for a member under age of 18, a parent or guardian must first create an account, then use the{" "}
              <span className="font-bold text-white">Family link</span> feature to add minors.
            </p>
          </div>

          {/* Date of Birth */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Date of birth <RequiredTag />
            </Label>
            <Input
              type="date"
              value={formData.dateOfBirth}
              onChange={(e) => updateField("dateOfBirth", e.target.value)}
              className={`${inputClasses} [color-scheme:dark]`}
              required
            />
          </div>
        </section>

        {/* ─── RESIDENTIAL ADDRESS ─── */}
        <section className="space-y-4">
          <h2 className="text-base font-bold text-white uppercase tracking-wide">
            Residential Address
          </h2>

          {/* Address Line 1 */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Address Line 1 <RequiredTag />
            </Label>
            <Input
              value={formData.addressLine1}
              onChange={(e) => updateField("addressLine1", e.target.value)}
              className={inputClasses}
              required
            />
          </div>

          {/* Address Line 2 */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>Address Line 2</Label>
            <Input
              value={formData.addressLine2}
              onChange={(e) => updateField("addressLine2", e.target.value)}
              className={inputClasses}
            />
          </div>

          {/* Suburb */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Suburb <RequiredTag />
            </Label>
            <Input
              value={formData.suburb}
              onChange={(e) => updateField("suburb", e.target.value)}
              className={inputClasses}
              required
            />
          </div>

          {/* Postcode */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Postcode <RequiredTag />
            </Label>
            <Input
              value={formData.postcode}
              onChange={(e) => updateField("postcode", e.target.value)}
              className={inputClasses}
              required
            />
          </div>

          {/* State */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              State <RequiredTag />
            </Label>
            <Select value={formData.state} onValueChange={(val) => updateField("state", val)}>
              <SelectTrigger className={selectTriggerClasses}>
                <SelectValue placeholder="Select" />
              </SelectTrigger>
              <SelectContent>
                {STATE_OPTIONS.map((s) => (
                  <SelectItem key={s.value} value={s.value}>{s.label}</SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>

          {/* Country */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Country <RequiredTag />
            </Label>
            <Select value={formData.country} onValueChange={(val) => updateField("country", val)}>
              <SelectTrigger className={selectTriggerClasses}>
                <SelectValue placeholder="Select" />
              </SelectTrigger>
              <SelectContent>
                {COUNTRY_OPTIONS.map((c) => (
                  <SelectItem key={c.value} value={c.value}>{c.label}</SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>

          {/* Mailing Address Same */}
          <div className="flex items-center gap-2 pt-2">
            <Checkbox
              id="mailingAddressSame"
              checked={formData.mailingAddressSame}
              onCheckedChange={(checked) => updateField("mailingAddressSame", checked as boolean)}
              className="border-white/40 data-[state=checked]:bg-[#209BD6] data-[state=checked]:border-[#209BD6]"
            />
            <Label
              htmlFor="mailingAddressSame"
              className="text-sm text-white font-normal"
            >
              My mailing address is the same as my residential
            </Label>
          </div>
        </section>

        {/* ─── CONTACT DETAILS ─── */}
        <section className="space-y-4">
          <h2 className="text-base font-bold text-white uppercase tracking-wide">
            Contact Details
          </h2>

          {/* Mobile Phone */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Mobile Phone <RequiredTag />
            </Label>
            <Input
              type="tel"
              value={formData.mobilePhone}
              onChange={(e) => updateField("mobilePhone", e.target.value)}
              placeholder="04XX XXX XXX"
              className={inputClasses}
              required
            />
          </div>

          {/* Home Phone */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>Home Phone</Label>
            <Input
              type="tel"
              value={formData.homePhone}
              onChange={(e) => updateField("homePhone", e.target.value)}
              className={inputClasses}
            />
          </div>
        </section>

        {/* ─── EMERGENCY CONTACT DETAILS ─── */}
        <section className="space-y-4">
          <h2 className="text-base font-bold text-white uppercase tracking-wide">
            Emergency Contact Details
          </h2>

          {/* Emergency Contact Person */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Emergency Contact Person <RequiredTag />
            </Label>
            <Input
              value={formData.emergencyContactPerson}
              onChange={(e) => updateField("emergencyContactPerson", e.target.value)}
              className={inputClasses}
              required
            />
          </div>

          {/* Emergency Contact Mobile */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Emergency Contact Mobile <RequiredTag />
            </Label>
            <Input
              type="tel"
              value={formData.emergencyContactMobile}
              onChange={(e) => updateField("emergencyContactMobile", e.target.value)}
              placeholder="04XX XXX XXX"
              className={inputClasses}
              required
            />
          </div>

          {/* Emergency Contact Home Phone */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>Emergency Contact Home Phone</Label>
            <Input
              type="tel"
              value={formData.emergencyContactHomePhone}
              onChange={(e) => updateField("emergencyContactHomePhone", e.target.value)}
              className={inputClasses}
            />
          </div>

          {/* Relationship */}
          <div className="space-y-1.5">
            <Label className={labelClasses}>
              Relationship <RequiredTag />
            </Label>
            <Select value={formData.relationship} onValueChange={(val) => updateField("relationship", val)}>
              <SelectTrigger className={selectTriggerClasses}>
                <SelectValue placeholder="Select" />
              </SelectTrigger>
              <SelectContent>
                {RELATIONSHIP_OPTIONS.map((r) => (
                  <SelectItem key={r} value={r.toLowerCase()}>{r}</SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>
        </section>

        {/* ─── PROFILE PICTURE ─── */}
        <section>
          <ProfilePictureCropper
            onImageSave={setProfileImage}
            savedImage={profileImage}
          />
        </section>

        {/* ─── SUBMIT BUTTON ─── */}
        <Button
          type="submit"
          className="w-full h-12 rounded bg-[#209BD6] hover:bg-[#1a86ba] text-white font-bold text-sm uppercase tracking-wider transition-colors"
        >
          Create Your Account
        </Button>
      </form>
    </div>
  );
}
