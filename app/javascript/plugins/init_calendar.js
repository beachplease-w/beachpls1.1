import $ from 'jquery';
import 'fullcalendar';

const initFullCalendar = () => {
  const calendar = document.getElementById("calendar");
  if (calendar)
    {const events = JSON.parse(calendar.dataset.events);

  $('#calendar').fullCalendar({
    locale: "fr",
    height: 500,
    view: 'month',
    eventSources: [{
      events: events,
      color: "#0c7489"
    }]
  })};
};


export { initFullCalendar };
