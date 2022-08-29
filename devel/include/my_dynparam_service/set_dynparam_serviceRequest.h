// Generated by gencpp from file my_dynparam_service/set_dynparam_serviceRequest.msg
// DO NOT EDIT!


#ifndef MY_DYNPARAM_SERVICE_MESSAGE_SET_DYNPARAM_SERVICEREQUEST_H
#define MY_DYNPARAM_SERVICE_MESSAGE_SET_DYNPARAM_SERVICEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_dynparam_service
{
template <class ContainerAllocator>
struct set_dynparam_serviceRequest_
{
  typedef set_dynparam_serviceRequest_<ContainerAllocator> Type;

  set_dynparam_serviceRequest_()
    : input()  {
    }
  set_dynparam_serviceRequest_(const ContainerAllocator& _alloc)
    : input(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _input_type;
  _input_type input;





  typedef boost::shared_ptr< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct set_dynparam_serviceRequest_

typedef ::my_dynparam_service::set_dynparam_serviceRequest_<std::allocator<void> > set_dynparam_serviceRequest;

typedef boost::shared_ptr< ::my_dynparam_service::set_dynparam_serviceRequest > set_dynparam_serviceRequestPtr;
typedef boost::shared_ptr< ::my_dynparam_service::set_dynparam_serviceRequest const> set_dynparam_serviceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator1> & lhs, const ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.input == rhs.input;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator1> & lhs, const ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_dynparam_service

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "39e92f1778057359c64c7b8a7d7b19de";
  }

  static const char* value(const ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x39e92f1778057359ULL;
  static const uint64_t static_value2 = 0xc64c7b8a7d7b19deULL;
};

template<class ContainerAllocator>
struct DataType< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_dynparam_service/set_dynparam_serviceRequest";
  }

  static const char* value(const ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string input\n"
;
  }

  static const char* value(const ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_dynparam_serviceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_dynparam_service::set_dynparam_serviceRequest_<ContainerAllocator>& v)
  {
    s << indent << "input: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.input);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_DYNPARAM_SERVICE_MESSAGE_SET_DYNPARAM_SERVICEREQUEST_H
