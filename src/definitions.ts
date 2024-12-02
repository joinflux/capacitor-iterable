export interface CapacitorIterablePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
