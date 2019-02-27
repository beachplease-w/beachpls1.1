import "bootstrap";
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

// navbar js
import { initUpdateNavbarOnScroll } from './navbar';

initUpdateNavbarOnScroll();
// mapbox js
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { previewImageOnFileSelect } from '../components/photo_preview'

previewImageOnFileSelect();
