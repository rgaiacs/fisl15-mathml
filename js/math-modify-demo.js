bevelled = true;
function setbevelled() {
  document.getElementById('mathmljs').setAttribute('bevelled',
                bevelled ? 'true' : 'false');
  bevelled = !bevelled;
  window.setTimeout(setbevelled, 2000);
};
setbevelled();
