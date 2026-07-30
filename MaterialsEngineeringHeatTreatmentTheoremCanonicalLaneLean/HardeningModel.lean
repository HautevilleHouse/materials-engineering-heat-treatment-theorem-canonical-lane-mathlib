import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure HardeningModelPackage where
  carbonContent : Type u
  quenchSeverity : Type v
  hardnessProfile : Type w
  hardenabilityCurve : Prop
  criticalDiameter : Prop
  jominyDistance : Prop

structure HardeningModelEvidence (H : HardeningModelPackage) where
  hardenabilityCurveClosed : H.hardenabilityCurve
  criticalDiameterClosed : H.criticalDiameter
  jominyDistanceClosed : H.jominyDistance

def HardeningModelClosed (H : HardeningModelPackage) : Prop :=
  H.hardenabilityCurve ∧ H.criticalDiameter ∧ H.jominyDistance

theorem hardening_model_closed_from_evidence (H : HardeningModelPackage) (E : HardeningModelEvidence H) :
    HardeningModelClosed H := by
  exact And.intro E.hardenabilityCurveClosed (And.intro E.criticalDiameterClosed E.jominyDistanceClosed)

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse