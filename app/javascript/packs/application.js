// Import the necessary modules or files
import Rails from '@rails/ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from '@rails/activestorage';
import 'channels';

// Initialize Rails, Turbolinks, and ActiveStorage
Rails.start();
Turbolinks.start();
ActiveStorage.start();

// Add your custom JavaScript code here
// For example:
document.addEventListener('DOMContentLoaded', () => {
  // Your code here...
});
