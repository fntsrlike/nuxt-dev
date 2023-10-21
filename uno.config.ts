import {
  defineConfig,
  presetAttributify,
  presetTypography,
  presetWind,
} from 'unocss'

export default defineConfig({
  presets: [
    presetAttributify(),
    presetTypography(),
    presetWind(),
  ],
})
