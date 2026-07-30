import MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MaterialsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HeatTreatmentWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse