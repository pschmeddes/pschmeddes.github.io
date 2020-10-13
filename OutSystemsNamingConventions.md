#OutSystems Naming Conventions
## Element names
## Module Naming
Use PascalCase and don't use underscores except for the layer Suffix or Prefix.
Examples:

### Core Layer Module Naming
Reusable services around business concepts, exporting entities, business rules and web-blocks

| Suffix | Description                                  | Example |
| ----- | ---------------------------------------------- | ------|
| _API    | Technical wrapper to expose an **API** to External consumers, keeping core services system agnostic and supporting multiple versions of the API | Pricing_API|
| _CW, _MCW | Isolated **C**ore **W**idgets (Blocks), to manage complexity, composition or to have its own lifecycle | Customer_CW |
| _BL, MBL | Isolated **B**usiness **L**ogic (Actions) to manage complexity, composition or to have its own lifecycle | Pricing_BL |
| _Eng | A BL becomes a Calculation **Eng**ine if it performs complex calculations, (e.g. an invoice calculation engine or an insurance simulator). **Eng**ines are usually subject to versions | Pricing_Eng |
| _Sync | Logic to **Sync**hronize data in CSs with an external system. Isolating this logic makes the CS completely system agnostic and it’s easier to decouple or replace the external system | Field_Sync |
| _CS, _MCS |  Reusable **C**ore **S**ervices with public entities, actions and web blocks | Customer_CS, Field_CS, SupplierAudit_CS, Store_Audit_CS |

*An “M” indicates a Mobile only module, like _MCS, _MBL or _MCW*

### Foundation Layer Module Naming

Non Functional requirements or integration modules, reusable in any business context

| Prefix | Description                                    | Example |
| ------ | ---------------------------------------------- | ------- |
| _Pat, _MPat | Reusable UI **Pat**terns for layout and display only - no Business logic | UserExtension_Pat, Backoffice_Pat |
| _Th | **Th**eme, look & feel elements, menu, ... |Internal_Th, Supplier_Th, Backoffice_Th |
|Template_ |Theme **templates** | Template_Backoffice, Template_Internal|
| _IS | **I**ntegration **S**ervices - technical wrapper to consume and normalize an external service | SoccerField_IS |
| _FS | **F**oundations **S**ervices to support NFR's (e.g. Audit trailing) | |
| _Drv | **Dr**i**v**er module - to have several integration services with different systems, performing the same type of operation (e.g. printers) you can create several drivers exposing the same API, with specialized implementations (like the transparency services pattern) | |
| _Lib | Generic **Lib**rary module | Audit_Lib |

*An “M” indicates a Mobile only module, like _MPat, *

## Application Naming
