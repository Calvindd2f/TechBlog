import React from 'react';
import { JsonForms } from '@jsonforms/react';
import { materialRenderers, materialCells } from '@jsonforms/material-renderers';

interface DynamicFormProps {
    schema: any;
    uiSchema: any;
    data: any;
    onSubmit: (data: any) => void;
}

const DynamicForm: React.FC<DynamicFormProps> = ({ schema, uiSchema, data, onSubmit }) => {
    return (
        <JsonForms
            schema={schema}
            uischema={uiSchema}
            data={data}
            renderers={materialRenderers}
            cells={materialCells}
            onChange={({ data }) => console.log('Form data changed:', data)}
            onSubmit={onSubmit}
        />
    );
};

export default DynamicForm;