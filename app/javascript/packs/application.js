import "bootstrap";
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initSelect2 } from '../plugins/init_select2';
import { initUpdateNavbarOnScroll } from './navbar';
import { initMapbox } from '../plugins/init_mapbox';
import 'mapbox-gl/dist/mapbox-gl.css';
import { previewImageOnFileSelect } from '../components/photo_preview'
import { initFullCalendar } from '../plugins/init_calendar'
// import { toggleActiveClass, toggleActiveOnClick } from './modal'
// navbar js

initUpdateNavbarOnScroll();
// mapbox js

initMapbox();

previewImageOnFileSelect();

initSelect2();


initFullCalendar();

const clickcables = document.querySelectorAll(".clickable");

const toggleActiveClass = (target) => {
  target.currentTarget.classList.toggle("active");
};

const toggleActiveOnClick = (clickable) => {
  clickable.addEventListener("click", event => toggleActiveClass(event));
};

clickcables.forEach(clickable => toggleActiveOnClick(clickable));
