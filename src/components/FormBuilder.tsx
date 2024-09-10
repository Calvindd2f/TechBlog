import React, { useState } from 'react';
import FormBuilder from 'react-jsonschema-form-builder';

const FormBuilderComponent: React.FC = () => {
    const [schema, setSchema] = useState({});
    const [uiSchema, setUiSchema] = useState({});

    const handleSchemaChange = (newSchema, newUiSchema) => {
        setSchema(newSchema);
        setUiSchema(newUiSchema);
        console.log('Schema updated:', newSchema);
        console.log('UI Schema updated:', newUiSchema);
    };
    return (
        <FormBuilder
            schema={schema}
            uiSchema={uiSchema}
            onChange={handleSchemaChange}
        />
    );
};

export default FormBuilderComponent;