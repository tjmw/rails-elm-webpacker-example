import Elm from './elm/Main';

document.addEventListener('DOMContentLoaded', () => {
  const containerId = "my-elm-container";
  const target = document.getElementById(containerId);
  const name = target.getAttribute("data-name");
  const component = Elm.Main.embed(target, {
    name: name,
  });
})
