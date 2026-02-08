document.addEventListener("DOMContentLoaded", () => {
  if (window.AlFolioCompat && typeof window.AlFolioCompat.initTooltips === "function") {
    window.AlFolioCompat.initTooltips(document);
  }
});
