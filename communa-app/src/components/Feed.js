import React, { Component } from "react";
import ProfileCard from "./ProfileCard"

class Feed extends Component {
  constructor(props) {
    super(props)
    this.state = {
      profiles: [],
    }
  }

  render() {
    return (
      <ProfileCard />
    );
  }
}

export default Feed;
