export const PASSWORD_RULES = {
  length: { test: (p: string) => p.length >= 8, label: "At least 8 characters" },
  maxLength: { test: (p: string) => p.length <= 128, label: "128 characters or fewer" },
  uppercase: { test: (p: string) => /[A-Z]/.test(p), label: "One uppercase letter" },
  lowercase: { test: (p: string) => /[a-z]/.test(p), label: "One lowercase letter" },
  number: { test: (p: string) => /\d/.test(p), label: "One number" },
  special: {
    test: (p: string) => /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/.test(p),
    label: "One special character",
  },
} as const;

export type PasswordCheck = keyof typeof PASSWORD_RULES;

export function getPasswordChecks(password: string): Record<PasswordCheck, boolean> {
  const checks = {} as Record<PasswordCheck, boolean>;
  for (const key of Object.keys(PASSWORD_RULES) as PasswordCheck[]) {
    checks[key] = PASSWORD_RULES[key].test(password);
  }
  return checks;
}

export function validatePassword(password: string): string | null {
  if (!PASSWORD_RULES.length.test(password)) return "Password must be at least 8 characters";
  if (!PASSWORD_RULES.maxLength.test(password)) return "Password must be 128 characters or fewer";
  if (!PASSWORD_RULES.uppercase.test(password)) return "Password must include an uppercase letter";
  if (!PASSWORD_RULES.lowercase.test(password)) return "Password must include a lowercase letter";
  if (!PASSWORD_RULES.number.test(password)) return "Password must include a number";
  if (!PASSWORD_RULES.special.test(password)) return "Password must include a special character";
  return null;
}
