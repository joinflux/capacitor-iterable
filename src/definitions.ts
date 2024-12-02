export interface CapacitorIterablePlugin {
  initialize(initOpts: { apiKey: string }): Promise<void>;
  setEmail(setEmailOpts: { email: string }): Promise<void>;
  setUserId(setUserIdOpts: { userId: string }): Promise<void>;
  register(registerOpts: { token: string }): Promise<void>;
}
