import { WebPlugin } from '@capacitor/core';

import type { CapacitorIterablePlugin } from './definitions';

export class CapacitorIterableWeb
  extends WebPlugin
  implements CapacitorIterablePlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
