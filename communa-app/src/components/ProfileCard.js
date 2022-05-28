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


  render() {
    return (
      <div>
        <div className="taskContainer">
          <input
            className="newTask"
            type="text"
            placeholder="Input a New Task and Press Enter"
            maxLength="75"
          />
        </div>
        <div className="wrapItems">
          <ul className="listItems"></ul>
        </div>
      </div>
    );
  }
}

export default ProfileCard;
