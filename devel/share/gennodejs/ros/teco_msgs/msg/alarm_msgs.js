// Auto-generated. Do not edit!

// (in-package teco_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class alarm_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.AlarmCode = null;
    }
    else {
      if (initObj.hasOwnProperty('AlarmCode')) {
        this.AlarmCode = initObj.AlarmCode
      }
      else {
        this.AlarmCode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type alarm_msgs
    // Serialize message field [AlarmCode]
    bufferOffset = _serializer.int32(obj.AlarmCode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type alarm_msgs
    let len;
    let data = new alarm_msgs(null);
    // Deserialize message field [AlarmCode]
    data.AlarmCode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teco_msgs/alarm_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '884ae1ac9e2728856a940ceceb8d7c1b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of offsets indicating what type an error is
    int32 HARDWARE_ERROR = 0
    int32 CPU_LOAD_ERROR = 100
    int32 MEMORY_ERROR = 200
    int32 ETHERNET_ERROR = 300
    int32 HDD_ERROR = 400
    int32 BATTERY_ERROR = 500
    int32 IMU_ERROR = 600
    int32 MOTOR_ERROR = 700
    int32 LASER_ERROR = 800
    int32 CAMERA_ERROR = 900
    int32 SAFETY_SYSTEM_ERROR = 1000
    int32 HOOK_ERROR = 5000
    int32 HOOK_CAMERA_ERROR = 5100
    int32 HOOK_ACTUATOR_ERROR = 5200
    int32 HOOK_BRAKE_ERROR = 5300
    int32 HOOK_ENCODER_ERROR = 5400
    int32 MISSING_ERROR = 9000
    int32 SOFTWARE_ERROR = 10000
    int32 MISSION_ERROR = 10100
    int32 LOCALIZATION_ERROR = 10200
    int32 MAPPING_ERROR = 10300
    int32 ODOM_FUSION_ERROR = 10400
    
    int32 AlarmCode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new alarm_msgs(null);
    if (msg.AlarmCode !== undefined) {
      resolved.AlarmCode = msg.AlarmCode;
    }
    else {
      resolved.AlarmCode = 0
    }

    return resolved;
    }
};

// Constants for message
alarm_msgs.Constants = {
  HARDWARE_ERROR: 0,
  CPU_LOAD_ERROR: 100,
  MEMORY_ERROR: 200,
  ETHERNET_ERROR: 300,
  HDD_ERROR: 400,
  BATTERY_ERROR: 500,
  IMU_ERROR: 600,
  MOTOR_ERROR: 700,
  LASER_ERROR: 800,
  CAMERA_ERROR: 900,
  SAFETY_SYSTEM_ERROR: 1000,
  HOOK_ERROR: 5000,
  HOOK_CAMERA_ERROR: 5100,
  HOOK_ACTUATOR_ERROR: 5200,
  HOOK_BRAKE_ERROR: 5300,
  HOOK_ENCODER_ERROR: 5400,
  MISSING_ERROR: 9000,
  SOFTWARE_ERROR: 10000,
  MISSION_ERROR: 10100,
  LOCALIZATION_ERROR: 10200,
  MAPPING_ERROR: 10300,
  ODOM_FUSION_ERROR: 10400,
}

module.exports = alarm_msgs;
