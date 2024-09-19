import { $ } from 'zx';

$.verbose = true;

await $`rm -rf dist .koka`;
