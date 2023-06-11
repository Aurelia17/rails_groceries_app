// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import application from './controllers/application';

// Add any additional global imports or code here

// Start the Stimulus application
import { Application } from '@hotwired/stimulus';
import { definitionsFromContext } from '@hotwired/stimulus-webpack-helpers';

const stimulusApplication = Application.start();
const context = require.context('./controllers', true, /\.js$/);
stimulusApplication.load(definitionsFromContext(context));

// Export the Stimulus application
export { stimulusApplication };
