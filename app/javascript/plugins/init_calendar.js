import $ from 'jquery';
import 'fullcalendar';

const initFullCalendar = () => {
  $('#calendar').fullCalendar({
    defaultView: 'month'
  })
};


export { initFullCalendar };
