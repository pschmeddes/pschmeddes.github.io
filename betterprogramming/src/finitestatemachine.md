# Finite State Machine

A Finite State Machine (FSM) is basically a specification how to handle events.

A FSM can be expressed as data

Example

| State | Header | Data | Trailer | Other |
| ----- | ------ | ---- | ------- | ----- |
| Initial | Reading | Error | Error | Error |
| Reading | Error | Reading | Done | Error |

TODO
