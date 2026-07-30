import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure DiffusionKinetics (T : Type) (t : Type) where
  temperature : T
  time : t
  diffusionCoefficient : Prop
  activationEnergy : Prop
  reactionRate : Prop
  quenchRateAdmissible : Prop

structure DiffusionKineticsEvidence (T : Type) (t : Type) (dk : DiffusionKinetics T t) where
  diffusionCoefficientClosed : dk.diffusionCoefficient
  activationEnergyClosed : dk.activationEnergy
  reactionRateClosed : dk.reactionRate
  quenchRateAdmissibleClosed : dk.quenchRateAdmissible

def DiffusionKineticsClosed (T : Type) (t : Type) (dk : DiffusionKinetics T t) : Prop :=
  dk.diffusionCoefficient ∧ dk.activationEnergy ∧ dk.reactionRate ∧ dk.quenchRateAdmissible

theorem diffusion_kinetics_closed_from_evidence (T : Type) (t : Type) (dk : DiffusionKinetics T t)
    (E : DiffusionKineticsEvidence T t dk) : DiffusionKineticsClosed T t dk := by
  exact And.intro E.diffusionCoefficientClosed (And.intro E.activationEnergyClosed (And.intro E.reactionRateClosed E.quenchRateAdmissibleClosed))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse
