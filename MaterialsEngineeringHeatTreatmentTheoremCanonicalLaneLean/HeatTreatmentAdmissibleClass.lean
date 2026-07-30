import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure HeatTreatmentAdmittedObject where
  steelGrade : Type u
  heatTreatmentCycle : Prop
  finalProperties : Prop
  conclusion : finalProperties

structure HeatTreatmentAdmissibleClass where
  object : HeatTreatmentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def HeatTreatmentAdmittedClosure (A : HeatTreatmentAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse