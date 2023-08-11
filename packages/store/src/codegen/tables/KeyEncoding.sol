// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "../../IStore.sol";
import { StoreSwitch } from "../../StoreSwitch.sol";
import { StoreCore } from "../../StoreCore.sol";
import { Bytes } from "../../Bytes.sol";
import { Memory } from "../../Memory.sol";
import { SliceLib } from "../../Slice.sol";
import { EncodeArray } from "../../tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "../../Schema.sol";
import { PackedCounter, PackedCounterLib } from "../../PackedCounter.sol";

// Import user types
import { ExampleEnum } from "./../Types.sol";

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16("mudstore"), bytes16("KeyEncoding")));
bytes32 constant KeyEncodingTableId = _tableId;

library KeyEncoding {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BOOL;

    return SchemaLib.encode(_schema);
  }

  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](6);
    _schema[0] = SchemaType.UINT256;
    _schema[1] = SchemaType.INT32;
    _schema[2] = SchemaType.BYTES16;
    _schema[3] = SchemaType.ADDRESS;
    _schema[4] = SchemaType.BOOL;
    _schema[5] = SchemaType.UINT8;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](1);
    _fieldNames[0] = "value";
    return ("KeyEncoding", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Register the table's schema (using the specified store) */
  function registerSchema(IStore _store) internal {
    _store.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Set the table's metadata (using the specified store) */
  function setMetadata(IStore _store) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    _store.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get value */
  function get(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    ExampleEnum k6
  ) internal view returns (bool value) {
    bytes32[] memory _keyTuple;
    /// @solidity memory-safe-assembly
    assembly {
      // Allocate memory
      _keyTuple := mload(0x40)
      mstore(0x40, add(_keyTuple, 224))
      // Store length
      mstore(_keyTuple, 6)
    }

    bytes32 _key;

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(k1));
    assembly {
      mstore(add(_keyTuple, 32), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(int256(k2)));
    assembly {
      mstore(add(_keyTuple, 64), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(k3);
    assembly {
      mstore(add(_keyTuple, 96), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint160(k4)));
    assembly {
      mstore(add(_keyTuple, 128), _key)
    }

    /// @solidity memory-safe-assembly
    _key = _boolToBytes32(k5);
    assembly {
      mstore(add(_keyTuple, 160), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint8(k6)));
    assembly {
      mstore(add(_keyTuple, 192), _key)
    }

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0);
    return (_toBool(uint8(Bytes.slice1(_blob, 0))));
  }

  /** Get value (using the specified store) */
  function get(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    ExampleEnum k6
  ) internal view returns (bool value) {
    bytes32[] memory _keyTuple;
    /// @solidity memory-safe-assembly
    assembly {
      // Allocate memory
      _keyTuple := mload(0x40)
      mstore(0x40, add(_keyTuple, 224))
      // Store length
      mstore(_keyTuple, 6)
    }

    bytes32 _key;

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(k1));
    assembly {
      mstore(add(_keyTuple, 32), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(int256(k2)));
    assembly {
      mstore(add(_keyTuple, 64), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(k3);
    assembly {
      mstore(add(_keyTuple, 96), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint160(k4)));
    assembly {
      mstore(add(_keyTuple, 128), _key)
    }

    /// @solidity memory-safe-assembly
    _key = _boolToBytes32(k5);
    assembly {
      mstore(add(_keyTuple, 160), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint8(k6)));
    assembly {
      mstore(add(_keyTuple, 192), _key)
    }

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0);
    return (_toBool(uint8(Bytes.slice1(_blob, 0))));
  }

  /** Set value */
  function set(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, ExampleEnum k6, bool value) internal {
    bytes32[] memory _keyTuple;
    /// @solidity memory-safe-assembly
    assembly {
      // Allocate memory
      _keyTuple := mload(0x40)
      mstore(0x40, add(_keyTuple, 224))
      // Store length
      mstore(_keyTuple, 6)
    }

    bytes32 _key;

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(k1));
    assembly {
      mstore(add(_keyTuple, 32), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(int256(k2)));
    assembly {
      mstore(add(_keyTuple, 64), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(k3);
    assembly {
      mstore(add(_keyTuple, 96), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint160(k4)));
    assembly {
      mstore(add(_keyTuple, 128), _key)
    }

    /// @solidity memory-safe-assembly
    _key = _boolToBytes32(k5);
    assembly {
      mstore(add(_keyTuple, 160), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint8(k6)));
    assembly {
      mstore(add(_keyTuple, 192), _key)
    }

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((value)));
  }

  /** Set value (using the specified store) */
  function set(
    IStore _store,
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    ExampleEnum k6,
    bool value
  ) internal {
    bytes32[] memory _keyTuple;
    /// @solidity memory-safe-assembly
    assembly {
      // Allocate memory
      _keyTuple := mload(0x40)
      mstore(0x40, add(_keyTuple, 224))
      // Store length
      mstore(_keyTuple, 6)
    }

    bytes32 _key;

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(k1));
    assembly {
      mstore(add(_keyTuple, 32), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(int256(k2)));
    assembly {
      mstore(add(_keyTuple, 64), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(k3);
    assembly {
      mstore(add(_keyTuple, 96), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint160(k4)));
    assembly {
      mstore(add(_keyTuple, 128), _key)
    }

    /// @solidity memory-safe-assembly
    _key = _boolToBytes32(k5);
    assembly {
      mstore(add(_keyTuple, 160), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint8(k6)));
    assembly {
      mstore(add(_keyTuple, 192), _key)
    }

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((value)));
  }

  /** Tightly pack full data using this table's schema */
  function encode(bool value) internal pure returns (bytes memory) {
    return abi.encodePacked(value);
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple(
    uint256 k1,
    int32 k2,
    bytes16 k3,
    address k4,
    bool k5,
    ExampleEnum k6
  ) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple;
    /// @solidity memory-safe-assembly
    assembly {
      // Allocate memory
      _keyTuple := mload(0x40)
      mstore(0x40, add(_keyTuple, 224))
      // Store length
      mstore(_keyTuple, 6)
    }

    bytes32 _key;

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(k1));
    assembly {
      mstore(add(_keyTuple, 32), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(int256(k2)));
    assembly {
      mstore(add(_keyTuple, 64), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(k3);
    assembly {
      mstore(add(_keyTuple, 96), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint160(k4)));
    assembly {
      mstore(add(_keyTuple, 128), _key)
    }

    /// @solidity memory-safe-assembly
    _key = _boolToBytes32(k5);
    assembly {
      mstore(add(_keyTuple, 160), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint8(k6)));
    assembly {
      mstore(add(_keyTuple, 192), _key)
    }

    return _keyTuple;
  }

  /* Delete all data for given keys */
  function deleteRecord(uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, ExampleEnum k6) internal {
    bytes32[] memory _keyTuple;
    /// @solidity memory-safe-assembly
    assembly {
      // Allocate memory
      _keyTuple := mload(0x40)
      mstore(0x40, add(_keyTuple, 224))
      // Store length
      mstore(_keyTuple, 6)
    }

    bytes32 _key;

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(k1));
    assembly {
      mstore(add(_keyTuple, 32), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(int256(k2)));
    assembly {
      mstore(add(_keyTuple, 64), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(k3);
    assembly {
      mstore(add(_keyTuple, 96), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint160(k4)));
    assembly {
      mstore(add(_keyTuple, 128), _key)
    }

    /// @solidity memory-safe-assembly
    _key = _boolToBytes32(k5);
    assembly {
      mstore(add(_keyTuple, 160), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint8(k6)));
    assembly {
      mstore(add(_keyTuple, 192), _key)
    }

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, uint256 k1, int32 k2, bytes16 k3, address k4, bool k5, ExampleEnum k6) internal {
    bytes32[] memory _keyTuple;
    /// @solidity memory-safe-assembly
    assembly {
      // Allocate memory
      _keyTuple := mload(0x40)
      mstore(0x40, add(_keyTuple, 224))
      // Store length
      mstore(_keyTuple, 6)
    }

    bytes32 _key;

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(k1));
    assembly {
      mstore(add(_keyTuple, 32), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(int256(k2)));
    assembly {
      mstore(add(_keyTuple, 64), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(k3);
    assembly {
      mstore(add(_keyTuple, 96), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint160(k4)));
    assembly {
      mstore(add(_keyTuple, 128), _key)
    }

    /// @solidity memory-safe-assembly
    _key = _boolToBytes32(k5);
    assembly {
      mstore(add(_keyTuple, 160), _key)
    }

    /// @solidity memory-safe-assembly
    _key = bytes32(uint256(uint8(k6)));
    assembly {
      mstore(add(_keyTuple, 192), _key)
    }

    _store.deleteRecord(_tableId, _keyTuple);
  }
}

function _toBool(uint8 value) pure returns (bool result) {
  assembly {
    result := value
  }
}

function _boolToBytes32(bool value) pure returns (bytes32 result) {
  assembly {
    result := value
  }
}
