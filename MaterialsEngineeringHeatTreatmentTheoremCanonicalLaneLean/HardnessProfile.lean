import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure HardnessProfilePackage where
  quenchRate : Prop
  carbonContent : Prop
  priorAusteniteGrainSize : Prop
  coolingCurve : Prop
  hardnessDistribution : Prop

structure HardnessProfileEvidence (H : HardnessProfilePackage) where
  quenchRateClosed : H.quenchRate
  carbonContentClosed : H.carbonContent
  priorAusteniteGrainSizeClosed : H.priorAusteniteGrainSize
  coolingCurveClosed : H.coolingCurve
  hardnessDistributionClosed : H.hardnessDistribution

def HardnessProfileClosed (H : HardnessProfilePackage) : Prop :=
  H.quenchRate ∧ H.carbonContent ∧ H.priorAusteniteGrainSize ∧
  H.coolingCurve ∧ H.hardnessDistribution

theorem hardness_profile_closed_from_evidence (H : HardnessProfilePackage) (E : HardnessProfileEvidence H) :
    HardnessProfileClosed H := by
  exact And.intro E.quenchRateClosed
    (And.intro E.carbonContentClosed
      (And.intro E.priorAusteniteGrainSizeClosed
        (And.intro E.coolingCurveClosed E.hardnessDistributionClosed)))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse