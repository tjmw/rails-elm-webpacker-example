import Elm from './elm/Main';
import loadMetaTagData from "../meta-tag-bootstrap";

document.addEventListener('DOMContentLoaded', () => {
  const globalConfig = {
    api_root: loadMetaTagData("apiRoot")
  };

  const containerId = "my-elm-container";
  const target = document.getElementById(containerId);
  const name = target.getAttribute("data-name");

  const component = Elm.Main.embed(target, Object.assign(globalConfig, {
    name: name,
  }));

  component.ports.somethingHappened.subscribe(() => {
    console.log("Something happened");
  });
})
