// Auto-generated. Do not edit!

// (in-package my_action_actionlib.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class feedbackMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.currentIndex = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('currentIndex')) {
        this.currentIndex = initObj.currentIndex
      }
      else {
        this.currentIndex = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type feedbackMsg
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [currentIndex]
    bufferOffset = _serializer.int8(obj.currentIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type feedbackMsg
    let len;
    let data = new feedbackMsg(null);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [currentIndex]
    data.currentIndex = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.action.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_action_actionlib/feedbackMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71787da51c21b713ad07f51cd9d1e7eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string action
    int8 currentIndex
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new feedbackMsg(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.currentIndex !== undefined) {
      resolved.currentIndex = msg.currentIndex;
    }
    else {
      resolved.currentIndex = 0
    }

    return resolved;
    }
};

module.exports = feedbackMsg;
