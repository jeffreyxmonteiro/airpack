// app/javascript/packs/application.js
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/airbnb.css"

flatpickr(".datepicker", {
  altInput: true,
  enableTime: true
})


flatpickr(".datepicker_notime", {
  altInput: true
})

flatpickr(".timepicker", {
  enableTime: true,
  noCalendar: true,
  dateFormat: "H:i"
})
