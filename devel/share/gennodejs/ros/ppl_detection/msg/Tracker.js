// Auto-generated. Do not edit!

// (in-package ppl_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Human = require('./Human.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Tracker {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.human = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('human')) {
        this.human = initObj.human
      }
      else {
        this.human = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tracker
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [human]
    // Serialize the length for message field [human]
    bufferOffset = _serializer.uint32(obj.human.length, buffer, bufferOffset);
    obj.human.forEach((val) => {
      bufferOffset = Human.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tracker
    let len;
    let data = new Tracker(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [human]
    // Deserialize array length for message field [human]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.human = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.human[i] = Human.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 20 * object.human.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ppl_detection/Tracker';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ddcc20a6bcdf88fc6a57af1ba99d938';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Human[] human
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: ppl_detection/Human
    int32 tracking_no
    float32 pos_x
    float32 pos_y
    float32 pos_z
    float32 distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Tracker(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.human !== undefined) {
      resolved.human = new Array(msg.human.length);
      for (let i = 0; i < resolved.human.length; ++i) {
        resolved.human[i] = Human.Resolve(msg.human[i]);
      }
    }
    else {
      resolved.human = []
    }

    return resolved;
    }
};

module.exports = Tracker;
