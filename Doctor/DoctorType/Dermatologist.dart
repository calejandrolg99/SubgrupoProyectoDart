import "../../Appointment/Appointment.dart";
import "../../Criteria/Criteria.dart";
import "../../Data/Data.dart";
import "../../Data/DataBuilder/DermatologistHistoryBuilder.dart";
import "../../Data/Field/FieldEnum.dart";
import "../../Specialty/SpecialitiesName.dart";
import "../../Specialty/Specialty.dart";
import "../Doctor.dart";

class Dermatologist extends Doctor {

  //ATRIBUTOS
  List<Appointment> appointments;

  //CONSTRUCTOR
  Dermatologist(String name, List<Specialty<SpecialitiesName>> specialty, this.appointments) :  super(name, specialty, appointments);  

  //METODOS ABSTRACTOS
  @override
  makeMedicalHistory(builder, criteria) {

    for (const key in criteria.getKeys()) {
      switch (key) {
        case FieldNames.BloodPleasure:
          builder.buildBloodPressure(criteria.getValue(key));
          break;
        case FieldNames.HeartRate:
          builder.buildHeartRate(criteria.getValue(key));
          break;
        case FieldNames.Height:
          builder.buildHeight(criteria.getValue(key));
          break;
        case FieldNames.Weight:
          builder.buildWeight(criteria.getValue(key));
          break;
        case FieldNames.PersonalRecords:
          builder.buildPersonalRecords(criteria.getValue(key));
          break;
        case FieldNames.Saturation:
          builder.buildSaturation(criteria.getValue(key));
          break;
        case FieldNames.Skin:
          builder.buildSkin(criteria.getValue(key));
          break;
      }

    }

    return builder.getResult();

  }

}