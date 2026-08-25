import { defineConfig } from "vite";

export default defineConfig({
  build: {
    rollupOptions: {
      input: "index.html",
    },
    assetsInlineLimit: 100_000, // inline images/fonts up to ~100kb, save server space, enforce this?
  },
});
