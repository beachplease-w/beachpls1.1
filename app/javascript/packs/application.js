import "bootstrap";
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initSelect2 } from '../plugins/init_select2';
import { initUpdateNavbarOnScroll } from './navbar';
import { initMapbox } from '../plugins/init_mapbox';
import 'mapbox-gl/dist/mapbox-gl.css';
import { previewImageOnFileSelect } from '../components/photo_preview'

// navbar js

initUpdateNavbarOnScroll();
// mapbox js

initMapbox();

previewImageOnFileSelect();

initSelect2();

import { initFullCalendar } from '../plugins/init_calendar'

initFullCalendar();

