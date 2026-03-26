import Reveal from "reveal.js";
import Notes from "reveal.js/plugin/notes/notes.esm.js";
import Highlight from "reveal.js/plugin/highlight/highlight.esm.js";

import "reveal.js/dist/reveal.css";
import "reveal.js/dist/theme/black.css";
import "reveal.js/plugin/highlight/monokai.css";
import "../css/custom.css";

import slidesHTML from "../slides/slides.html?raw"; // raw loader, vite should support this

document.addEventListener("DOMContentLoaded", () => {
  const slidesContainer = document.querySelector(".slides");
  slidesContainer.innerHTML = slidesHTML; // directly inject the HTML slides

  const deck = new Reveal({
    hash: true,
    plugins: [Highlight, Notes],
  });

  deck.initialize({
    center: false,
    slideNumber: true,
  });
});
