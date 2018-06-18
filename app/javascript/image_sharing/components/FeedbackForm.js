import React, { Component } from 'react';
import { Form, FormGroup, Label, Input, Button } from 'reactstrap';
import PropTypes from 'prop-types';
import { observer } from 'mobx-react';
import PostFeedbackService from '../services/PostFeedbackService';

@observer
export class FeedbackForm extends Component {
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
      <Form>
        <FormGroup>
          <Label for="user-name">Your name:</Label>
          <Input
            type="text"
            onChange={(e) => this.props.store.setUserName(e.target.value)}
            value={this.props.store.userName}
          />
        </FormGroup>
        <FormGroup>
          <Label for="user-name">Comments:</Label>
          <Input
            type="textarea"
            onChange={(e) => this.props.store.setComments(e.target.value)}
            value={this.props.store.comments}
          />
        </FormGroup>
        <Button
          className='submit'
          color='primary'
          onClick={this.onClickHandler}
        >
          Submit
        </Button>
      </Form>
    )
  }
}

export default FeedbackForm;
