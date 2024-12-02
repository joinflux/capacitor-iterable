/* eslint-disable @typescript-eslint/no-unused-vars */
import { WebPlugin } from '@capacitor/core';

import type { CapacitorIterablePlugin } from './definitions';

export class CapacitorIterableWeb
  extends WebPlugin
  implements CapacitorIterablePlugin
{
  async initialize(_: {apiKey: string}): Promise<void> {
    this.unimplemented()
  }
  async setEmail(_: {email: string}): Promise<void> {
    this.unimplemented()
  }
  async setUserId(_: {userId: string}): Promise<void> {
    this.unimplemented()
  }
  async register(_: {token: string}): Promise<void> {
    this.unimplemented()
  }
}
