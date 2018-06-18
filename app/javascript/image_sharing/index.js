import React from 'react';
import ReactDOM from 'react-dom';
import App from './components/App';
import { Provider } from 'mobx-react';

/* Initialize your store here*/

ReactDOM.render(
  <Provider>
    <App/>
  </Provider>,
  document.getElementById('application-root')
);
