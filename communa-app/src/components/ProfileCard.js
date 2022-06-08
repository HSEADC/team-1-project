import React, { Component } from "react";
import axios from "axios";
class ProfileCard extends Component {


 constructor(props) {
    super(props)
    this.state = {
      profiles: [],
    }
  }

  loadProfiles() {
    axios
      .get("profiles")
      .then((res) => {
        this.setState({ profiles: res.data })
      })
      .catch((error) => console.log(error))
  }

  componentDidMount() {
    this.loadProfiles()
  }



  render() {
    return (
      <div className="profileContainer">
        {this.state.profiles.map((profile) => {
          return (
            <p>{profile.name}</p>
          )
        })}
      </div>
    );
  }
}

export default ProfileCard;
