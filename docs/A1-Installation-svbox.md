# (APPENDIX) Appendices {-}


# Installation de la SciViews Box {#install-tuto}





<style>
.UMONS {
  display: none;
}

.noinstitution {
  display: block;
}

.S-BIOG-006 .S-BIOG-027 .S-BIOG-921 {
  display: none;
}

.nocourse {
  display: block;
}

summary {
  background:  #f5f5f5;
  border: 1px solid #ccc;
}
</style>

<script>
function getParameterByName(name, url) {
  name = name.replace(/[\[\]]/g,"\\$&");
  // Try to get the value from local storage
  if (window.localStorage) {
    return localStorage.getItem(name);
  } else {
    return '';
  }
}

// Collect parameters and store their values (as passed by Moodle/Wordpress)
var login       = getParameterByName('login');
var email       = getParameterByName('email');
var displayname = getParameterByName('displayname');
var firstname   = getParameterByName('firstname');
var lastname    = getParameterByName('lastname');
var iemail      = getParameterByName('iemail');
var iid         = getParameterByName('iid');
var ifirstname  = getParameterByName('ifirstname');
var ilastname   = getParameterByName('ilastname');
var institution = getParameterByName('institution');
var icourse     = getParameterByName('icourse');
var ictitle     = getParameterByName('ictitle');
var iurl        = getParameterByName('iurl');
var iref        = getParameterByName('iref');

let institutions = ['UMONS', 'noinstitution'];
let courses = ['S-BIOG-006', 'S-BIOG-027', 'S-BIOG-921', 'nocourse'];

function toggleDisplay(item, target) {
  var style = item == target ? 'block' : 'none';
  var elems = document.getElementsByClassName(item);
  for (i = 0; i < elems.length; i++) {
    var elem = elems[i];
    elem.style.display = style;
  }
}

function toggleInstitution(name) {
  // Disable all institutions except that one
  // Since they are already all hidden, just reenable it and hide noinstitution
  toggleDisplay('noinstitution', name);
  toggleDisplay(name, name);
}

function toggleCourse(name) {
  // Disable all courses except that one
  // Since they are already all hidden, just reenable it and hide nocourse
  toggleDisplay('nocourse', name);
  toggleDisplay(name, name);
}

function processParameters() {
  // Content related to an institution
  if (institution !== null) {
    toggleInstitution(institution);
  }
  // Content relative to a course
  if (icourse !== null) {
    toggleCourse(icourse);
  }
  // Process other parameters too here...
  // ...
}


function retargetLinks() {
  // If displayed in an iframe, open external links into parent
  // Adapted from Yihui Xie blog
  var links = document.getElementsByTagName('a');
  for (var i = 0; i < links.length; i++) {
    if (/^(https?:)?\/\//.test(links[i].getAttribute('href')) &&
      links[i].target != null) {
      links[i].target = '_parent';
    }
  }
};

window.onload = function() {processParameters(); retargetLinks();};
</script>

<noscript>Please enable JavaScript for learndown extra features.</a></noscript>


...
