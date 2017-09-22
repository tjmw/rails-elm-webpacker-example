export default function loadMetaTagData(name) {
  const element = document.querySelectorAll(`meta[name=${name}]`)[0];

  if (typeof element !== "undefined") {
    return element.getAttribute("value");
  } else {
    return null;
  }
}
