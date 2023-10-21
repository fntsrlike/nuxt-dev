import extractorMdc from '@unocss/extractor-mdc'
import {
  defineConfig,
  presetAttributify,
  presetTypography,
  presetWind,
} from 'unocss'

export default defineConfig({
  content: {
    filesystem: [
      '**/*.md',
    ],
  },
  extractors: [
    extractorMdc(),
  ],
  presets: [
    presetAttributify(),
    presetTypography(),
    presetWind(),
  ],
})
