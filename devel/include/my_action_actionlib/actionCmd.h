// Generated by gencpp from file my_action_actionlib/actionCmd.msg
// DO NOT EDIT!


#ifndef MY_ACTION_ACTIONLIB_MESSAGE_ACTIONCMD_H
#define MY_ACTION_ACTIONLIB_MESSAGE_ACTIONCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_action_actionlib
{
template <class ContainerAllocator>
struct actionCmd_
{
  typedef actionCmd_<ContainerAllocator> Type;

  actionCmd_()
    : cmdType(0)
    , scriptName()
    , startLine(0)  {
    }
  actionCmd_(const ContainerAllocator& _alloc)
    : cmdType(0)
    , scriptName(_alloc)
    , startLine(0)  {
  (void)_alloc;
    }



   typedef int8_t _cmdType_type;
  _cmdType_type cmdType;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _scriptName_type;
  _scriptName_type scriptName;

   typedef int8_t _startLine_type;
  _startLine_type startLine;





  typedef boost::shared_ptr< ::my_action_actionlib::actionCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_action_actionlib::actionCmd_<ContainerAllocator> const> ConstPtr;

}; // struct actionCmd_

typedef ::my_action_actionlib::actionCmd_<std::allocator<void> > actionCmd;

typedef boost::shared_ptr< ::my_action_actionlib::actionCmd > actionCmdPtr;
typedef boost::shared_ptr< ::my_action_actionlib::actionCmd const> actionCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_action_actionlib::actionCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_action_actionlib::actionCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_action_actionlib::actionCmd_<ContainerAllocator1> & lhs, const ::my_action_actionlib::actionCmd_<ContainerAllocator2> & rhs)
{
  return lhs.cmdType == rhs.cmdType &&
    lhs.scriptName == rhs.scriptName &&
    lhs.startLine == rhs.startLine;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_action_actionlib::actionCmd_<ContainerAllocator1> & lhs, const ::my_action_actionlib::actionCmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_action_actionlib

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::my_action_actionlib::actionCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_action_actionlib::actionCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_action_actionlib::actionCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_action_actionlib::actionCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_action_actionlib::actionCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_action_actionlib::actionCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_action_actionlib::actionCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5648d904ae74995e135ff9a25b104b2a";
  }

  static const char* value(const ::my_action_actionlib::actionCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5648d904ae74995eULL;
  static const uint64_t static_value2 = 0x135ff9a25b104b2aULL;
};

template<class ContainerAllocator>
struct DataType< ::my_action_actionlib::actionCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_action_actionlib/actionCmd";
  }

  static const char* value(const ::my_action_actionlib::actionCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_action_actionlib::actionCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 cmdType\n"
"string scriptName\n"
"int8 startLine\n"
"\n"
;
  }

  static const char* value(const ::my_action_actionlib::actionCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_action_actionlib::actionCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmdType);
      stream.next(m.scriptName);
      stream.next(m.startLine);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct actionCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_action_actionlib::actionCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_action_actionlib::actionCmd_<ContainerAllocator>& v)
  {
    s << indent << "cmdType: ";
    Printer<int8_t>::stream(s, indent + "  ", v.cmdType);
    s << indent << "scriptName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.scriptName);
    s << indent << "startLine: ";
    Printer<int8_t>::stream(s, indent + "  ", v.startLine);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_ACTION_ACTIONLIB_MESSAGE_ACTIONCMD_H
