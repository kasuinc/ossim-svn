/*-----------------------------------------------------------------------------
 * Filename        : ossimProperty.i
 * Author          : Vipul Raheja
 * License         : See top level LICENSE.txt file.
 * Description     : Contains SWIG-Python of class ossimProperty
 * -----------------------------------------------------------------------------*/

%module pyossim

%{

#include <ossim/base/ossimObject.h>
#include <ossim/base/ossimString.h>
#include <ossim/base/ossimXmlNode.h>
#include <ossim/base/ossimProperty.h>

%}

/* Handling assignment operator */
%rename(__set__) ossimProperty::operator=;

/* Wrapping the class */
class ossimProperty : public ossimObject
{
        public:
                /*!
                 * This are bitwise and can be ored together
                 * The change type is very important and
                 * it determines how things are refreshed.
                 */
                enum ossimPropertyChangeType
                {
                        ossimPropertyChangeType_NOTSPECIFIED   = 0,
                        ossimPropertyChangeType_CACHE_REFRESH  = 1,
                        ossimPropertyChangeType_FULL_REFRESH   = 2
                };
                ossimProperty(const ossimString& name=ossimString(""));
                ossimProperty(const ossimProperty& rhs);

                const  ossimProperty& operator = (const ossimProperty& rhs);
                virtual const ossimProperty& assign(const ossimProperty& rhs);

                const ossimString& getName()const;
                void setName(const ossimString& name);

                virtual bool setValue(const ossimString& value)=0;
                virtual void valueToString(ossimString& valueResult)const=0;
                virtual ossimString valueToString()const;

                virtual const ossimContainerProperty* asContainer()const;
                virtual ossimContainerProperty* asContainer();

                void clearChangeType();
                void setChangeType(ossimPropertyChangeType type);
                void setFullRefreshBit();
                void setCacheRefreshBit();

                ossimPropertyChangeType getChangeType()const;
                bool isFullRefresh()const;
                bool isCacheRefresh()const;
                bool isChangeTypeSpecified()const;

                void setReadOnlyFlag(bool flag);
                bool getReadOnlyFlag()const;
                bool isReadOnly()const;

                void setModifiedFlag(bool flag);
                bool getModifiedFlag()const;
                bool isModified()const;
                void clearModifiedFlag();

                void setDescription(const ossimString& description);

                virtual ossimString getDescription()const;

                virtual ossimRefPtr<ossimXmlNode> toXml()const;

                virtual void saveState(ossimKeywordlist& kwl, const ossimString& prefix = "")const;

        protected:
                virtual ~ossimProperty();
                ossimString             theName;
                ossimString             theDescription;
                bool                    theReadOnlyFlag;
                ossimPropertyChangeType theChangeType;
                bool                    theModifiedFlag;
                
                /* Ignored due to unclean parsing of MACROS     *
                TYPE_DATA */
};
