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

class actionCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmdType = null;
      this.scriptName = null;
      this.startLine = null;
    }
    else {
      if (initObj.hasOwnProperty('cmdType')) {
        this.cmdType = initObj.cmdType
      }
      else {
        this.cmdType = 0;
      }
      if (initObj.hasOwnProperty('scriptName')) {
        this.scriptName = initObj.scriptName
      }
      else {
        this.scriptName = '';
      }
      if (initObj.hasOwnProperty('startLine')) {
        this.startLine = initObj.startLine
      }
      else {
        this.startLine = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type actionCmd
    // Serialize message field [cmdType]
    bufferOffset = _serializer.int8(obj.cmdType, buffer, bufferOffset);
    // Serialize message field [scriptName]
    bufferOffset = _serializer.string(obj.scriptName, buffer, bufferOffset);
    // Serialize message field [startLine]
    bufferOffset = _serializer.int8(obj.startLine, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type actionCmd
    let len;
    let data = new actionCmd(null);
    // Deserialize message field [cmdType]
    data.cmdType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [scriptName]
    data.scriptName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [startLine]
    data.startLine = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.scriptName.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_action_actionlib/actionCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5648d904ae74995e135ff9a25b104b2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmdType
    string scriptName
    int8 startLine
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new actionCmd(null);
    if (msg.cmdType !== undefined) {
      resolved.cmdType = msg.cmdType;
    }
    else {
      resolved.cmdType = 0
    }

    if (msg.scriptName !== undefined) {
      resolved.scriptName = msg.scriptName;
    }
    else {
      resolved.scriptName = ''
    }

    if (msg.startLine !== undefined) {
      resolved.startLine = msg.startLine;
    }
    else {
      resolved.startLine = 0
    }

    return resolved;
    }
};

module.exports = actionCmd;
