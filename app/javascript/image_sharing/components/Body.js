import React, { Component } from 'react';
import { Row, Col } from 'reactstrap';
import PropTypes from 'prop-types';
import { observer } from 'mobx-react';
import PostFeedbackService from '../services/PostFeedbackService';
import FeedBackForm from './FeedbackForm';

@observer
export class Body extends Component {
  static propTypes = {
    store: PropTypes.object.isRequired
  };

  onClickHandler = () => {
    const params = {
      name: this.props.store.userName,
      comments: this.props.store.comments
    };
    const service = new PostFeedbackService(this.props.store, params);
    service.postFeedback();
  };

  render() {
    return (
      <div>
        <Row>
          <Col lg={{ size: 4, offset: 4}}>
            <FeedBackForm store={this.props.store} />
          </Col>
        </Row>
      </div>
    )
  }
}

export default Body;
