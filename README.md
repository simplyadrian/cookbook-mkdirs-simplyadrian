mkdirs-simplyadrian Cookbook
===============
Creates \[empty\] directories defined in a node attribute list.

Attributes
----------
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['mkdirs-simplyadrian']</tt></td>
    <td>Array/List</td>
    <td>The directories to create. See example below.</td>
    <td><tt>empty list []</tt></td>
  </tr>
</table>

Usage
-----
Just include `mkdirs-simplyadrian` in your node's `run_list` and configure the mkdirs-simplyadrian attribute:

```json
{
  "name":"my_node",
  "default_attributes": {
    "mkdirs-simplyadrian": [{
      "path": "/foo"
    }, {
      "path": "/foo/bar",
      "owner": "bar_owner",
      "group": "bar_group",
      "mode": "0774"
    }]
  }
  "run_list": [
    "recipe[mkdirs-simplyadrian]"
  ]
}
```