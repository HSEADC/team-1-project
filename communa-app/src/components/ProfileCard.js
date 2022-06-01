import React, { Component } from "react";
import axios from "axios";

class ProfileCard extends Component {
  constructor(props) {
    super(props);
    this.state = {
      profiles: [],
    }
  }

  loadProfiles() {
    axios
      .get("/api/v1/profiles")
      .then((res) => {
        this.setState({ profiles: res.data });
      })
      .catch((error) => console.log(error));
  }

  componentDidMount() {
    this.loadProfiles();
  }



  render() {
    return (
      <div className="profileContainer">
      hey
      </div>
    );
  }
}

export default ProfileCard;
