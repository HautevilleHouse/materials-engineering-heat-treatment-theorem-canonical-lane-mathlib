import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure HeatTreatmentProcessPackage where
  annealingCycle : Prop
  quenchingRate : Prop
  temperingTime : Prop
  hardeningDepth : Prop
  phaseTransformation : Prop

structure HeatTreatmentProcessEvidence (H : HeatTreatmentProcessPackage) where
  annealingCycleClosed : H.annealingCycle
  quenchingRateClosed : H.quenchingRate
  temperingTimeClosed : H.temperingTime
  hardeningDepthClosed : H.hardeningDepth
  phaseTransformationClosed : H.phaseTransformation

def HeatTreatmentProcessClosed (H : HeatTreatmentProcessPackage) : Prop :=
  H.annealingCycle ∧ H.quenchingRate ∧ H.temperingTime ∧ H.hardeningDepth ∧ H.phaseTransformation

theorem heat_treatment_process_closed_from_evidence (H : HeatTreatmentProcessPackage) (E : HeatTreatmentProcessEvidence H) : HeatTreatmentProcessClosed H := by
  exact And.intro E.annealingCycleClosed (And.intro E.quenchingRateClosed (And.intro E.temperingTimeClosed (And.intro E.hardeningDepthClosed E.phaseTransformationClosed)))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse