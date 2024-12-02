import { registerPlugin } from '@capacitor/core';

import type { CapacitorIterablePlugin } from './definitions';

const CapacitorIterable = registerPlugin<CapacitorIterablePlugin>(
  'CapacitorIterable',
  {
    web: () => import('./web').then(m => new m.CapacitorIterableWeb()),
  },
);

export * from './definitions';
export { CapacitorIterable };
