// Auto-generated. Do not edit!

// (in-package dynamic_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class dynCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmdType = null;
      this.para = null;
    }
    else {
      if (initObj.hasOwnProperty('cmdType')) {
        this.cmdType = initObj.cmdType
      }
      else {
        this.cmdType = 0;
      }
      if (initObj.hasOwnProperty('para')) {
        this.para = initObj.para
      }
      else {
        this.para = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dynCmd
    // Serialize message field [cmdType]
    bufferOffset = _serializer.int8(obj.cmdType, buffer, bufferOffset);
    // Serialize message field [para]
    bufferOffset = _arraySerializer.float32(obj.para, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dynCmd
    let len;
    let data = new dynCmd(null);
    // Deserialize message field [cmdType]
    data.cmdType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [para]
    data.para = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.para.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dynamic_tutorials/dynCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3d95f1c672c95f8620a00173f3fc89c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmdType
    float32[] para
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dynCmd(null);
    if (msg.cmdType !== undefined) {
      resolved.cmdType = msg.cmdType;
    }
    else {
      resolved.cmdType = 0
    }

    if (msg.para !== undefined) {
      resolved.para = msg.para;
    }
    else {
      resolved.para = []
    }

    return resolved;
    }
};

module.exports = dynCmd;
