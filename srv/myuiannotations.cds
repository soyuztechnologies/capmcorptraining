using from './CatalogService';
annotate CatalogService.Students with @(
    UI:{
        LineItem:[
            {
                $Type : 'UI.DataField',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Value : first_name,
            },
            {
                $Type : 'UI.DataField',
                Value : last_name,
            },

        ],
        HeaderInfo:{
            Description : {
                $Type : 'UI.DataField',
                Value : first_name,
            },
            Title : {
                $Type : 'UI.DataField',
                Value : email,
            },
            ImageUrl : 'https://yt3.ggpht.com/ytc/AAUvwnh3wZ_lF5toqPaf4QiypgoSn9BD5rZQXhC2bvRO3Rc=s900-c-k-c0x00ffffff-no-rj',
        },
        Identification:[
            {
                $Type : 'UI.DataField',
                Value : first_name,
            },
            {
                $Type : 'UI.DataField',
                Value : last_name,
            },
            {
                $Type : 'UI.DataField',
                Value : date_sign_up,
            },
        ],
        Facets:[
            {
                Label: 'More Details',
                $Type : 'UI.ReferenceFacet',
                ID : 'moredetails',
                Target : '@UI.Identification'
            },
            {
                Label: 'Course Details',
                $Type: 'UI.ReferenceFacet',
                ID: 'coursedetails',
                Target: 'courses/@UI.FieldGroup'
            }
        ]
    }
);
annotate CatalogService.Students with {
    email @title : '{i18n>email}';
    first_name @title : '{i18n>firstname}';
    last_name @title : '{i18n>lastname}';
    date_sign_up @title : '{i18n>date}';
};

annotate CatalogService.Courses with @(
    UI:{
        FieldGroup:{
            Data : [
                {
                    $Type : 'UI.DataField',
                    Value : course_name,
                    Label : 'Course Name'
                },
                {
                    $Type : 'UI.DataField',
                    Value : start_date,
                    Label : 'Start Date'
                },
                {
                    $Type : 'UI.DataField',
                    Value : end_date,
                    Label : 'End Date'
                },
            ],
        }
    }
);



