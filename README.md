<p align="center">
  <img width="489" height="143" src="PlanPal_Logo.png">
</p>

<h1 align="center">PlanPal</h1>

<p align="center">This personal care app is designed to manage work/study schedules efficiently using psychologically certified techniques.</p>

<p align="center">The app features three modes of auto-generated schedules: Non-custom schedules with two types, Longer Periods and Shorter Periods, and a Custom Schedule. The custom and non-custom schedules cannot be modified once they've been generated. The non-custom schedules have restricted timings for studying activities based on the research behind studying for shorter versus longer periods of time. </p>

<p align="center"><b>The main features of this app include:</b></p>
<p align="center">1. Auto-generate a personalized schedule that fits to the user’s demands and specifications.</p>
<p align="center">2. Push notifications for reminders about taking care of your personal health such as hydrating, taking a break, etc.</p>

<p align="center">
  <img width ="150" height="300" src="homepage.gif">
</p>

<h2 align="center">Table of Contents</h2>
<p align="center"><a href="#features">Features & Functionality</a></p>
<p align="center"><a href="#installation">Installation Requirements</a></p>
<p align="center"><a href="#framework">Technical Framework</a></p>
<p align="center"><a href="#contributors">Contributors</a></p>
<p align="center"><a href="#notes">Notes</a></p>

<h2 align="center" id="features">Features & Functionality</h2>
<dl>
  <dt>Short Study Schedule</dt>
  <dd align="center">The Short Study Schedule option allows you to study in multiple 1 hour time intervals with 10 minute breaks. The user input for this schedule consists of the tasks the user would like to work on for the day, the amount of time the user would like to spend per task, the times they are unavailable, a start time as well as a date for the schedule to be generated.
    <table>
      <tr>
        <th>
          <img width="200" height"500" src="tasks.png">
        </th>
        <th>
          <img width="200" height"500" src="startTime.png">
        </th>
        <th>
          <img width="200" height"500" src="unavailable.png">
        </th>
        <th>
          <img width="200" height"500" src="schedule.png">
        </th>
      </tr>
    </table>
    
  </dd>
  <dt>Long Study Schedule</dt>
  <dd align="center">The Long Study Schedule generates a schedule for the user that allows them to study in 3 hour blocks with a 30 minute break after each block. The user input for this schedule consists of the tasks the user would like to work on for the day, the amount of time the user would like to spend per task, the times they are unavailable, a start time as well as a date for the schedule to be generated.
  <table>
        <tr>
          <th>
            <img width="200" height"500" src="LongTasks.jpg">
          </th>
          <th>
            <img width="200" height"500" src="LongStartTime.jpg">
          </th>
          <th>
            <img width="200" height"500" src="LongUnavailable.jpg">
          </th>
          <th>
            <img width="200" height"500" src="LongSchedule.jpg">
          </th>
        </tr>
      </table>
  </dd>
  <dt>Custom Study Schedule</dt>
  <dd align="center">The Custom Study Schedule generates a schedule for the user that allows the user to add in multiple 1 hour activities without pre-added breaks for an auto-generated weekly schedule. The user input for this schedule consists of wake up and bed times to set the day limit, unavailability times, task inputs with time expected to be spent on each task and specific days the task is to be added.
  <table>
        <tr>
          <th>
            <img width="200" height"500" src="ScheduleLimit.gif">
          </th>
          <th>
            <img width="200" height"500" src="CustomUnavailability.gif">
          </th>
          <th>
            <img width="200" height"500" src="CustomAddTasks.gif">
          </th>
          <th>
            <img width="200" height"500" src="CustomSchedule.gif">
          </th>
        </tr>
      </table>
  </dd>
  <dt>Push Notifications</dt>
  <dd align="center">PlanPal offers scheduled push notifications and in-app notifications relating to personal health and wellness. Notifications reminding the user to take a hydration break are scheduled every 20-30 minutes to maintain the user's health while working through the tasks the user has scheduled for the day. These notifications can be viewed through the notification bar of the mobile device while the app is running in the background or, can be viewed directly on the homepage of the app if the user is currently using the app. The user also has the option to click directly on the push notification received through the mobile device which will take the user to the PlanPal app directly.
    <table>
      <tr>
        <th>
          <img width="245" height="475" src="no_notifications_image.png">
        </th>
        <th>
          <img width="245" height="475" src="in_app_notification_image.png">
        </th>
        <th>
          <img width="245" height="475" src="push_notification_image.png">
        </th>
        <th>
          <img width="245" height="475" src="push_notification.gif">
        </th>
      </tr>
    </table>
  </dd>
</dl>

<h2 align="center" id="installation">Installation Requirements</h2>
<p align="center">Before you can run this app, ensure that you have the Flutter SDK and an emulator, such as the Android Emulator set up on your device. See the 
  <a href="https://flutter.dev/docs/get-started/install">Flutter</a> website for more information.</p>
  
<ol>
  <li>Open up Command Prompt on Windows, or Terminal on macOS/Linux.</li>
  <li>Use the <code>cd</code> command to change the directory to the location of the <code>.dart</code> files for this app.</li>
  <li>Use the <code>flutter pub get</code> command to get all dependencies for the app.</li>
  <li>Use the <code>flutter run</code> command.</li>
  <li>Now the app will run on the emulator you have chosen.</li>
</ol>

<p align="center">
  <b>Note:</b>
  In order to have a notification setup in your installation of PlanPal, you will need to create a <a href="https://firebase.google.com/">Firebase</a> account and register PlanPal as a new project in your Firebase console. This process will require you to enter an Android package name.
</p>

<p align="center">Android package name for PlanPal: <code>com.example.smart_schedule_creator</code></p>

<p align="center">After registering PlanPal with Firebase, you will need to download the <code>google-services.json</code> file provided to you, and store it in the following directory: <code>./android/app</code>. The remaining configurations for Firebase notifications for PlanPal running on an Android device have already been completed.</p>

<h2 align="center" id="framework">Technical Framework</h2>
<p align ="center">This app was developed using the Android Studio IDE, Firebase Cloud Messaging, Flutter SDK and Dart programming language.</p>


<h2 align="center" id="contributors">Contributors</h2>
<p align="center">The entirety of this program was designed and coded by Izba Amjad, Khushi Desai and Harman Khehara.</p>

<h2 align="center" id="notes">Notes</h2>
<p align="center">This app is currently not deployed on the App Store or Google Play.</p>
