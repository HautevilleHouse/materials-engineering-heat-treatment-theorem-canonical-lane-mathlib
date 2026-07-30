import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure GrainGrowth (T : Type) (t : Type) where
  temperature : T
  time : t
  grainSizeDistribution : Prop
  recrystallizationFraction : Prop
  precipitatePinning : Prop
  grainBoundaryEnergy : Prop

structure GrainGrowthEvidence (T : Type) (t : Type) (gg : GrainGrowth T t) where
  grainSizeDistributionClosed : gg.grainSizeDistribution
  recrystallizationFractionClosed : gg.recrystallizationFraction
  precipitatePinningClosed : gg.precipitatePinning
  grainBoundaryEnergyClosed : gg.grainBoundaryEnergy

def GrainGrowthClosed (T : Type) (t : Type) (gg : GrainGrowth T t) : Prop :=
  gg.grainSizeDistribution ∧ gg.recrystallizationFraction ∧ gg.precipitatePinning ∧ gg.grainBoundaryEnergy

theorem grain_growth_closed_from_evidence (T : Type) (t : Type) (gg : GrainGrowth T t)
    (E : GrainGrowthEvidence T t gg) : GrainGrowthClosed T t gg := by
  exact And.intro E.grainSizeDistributionClosed (And.intro E.recrystallizationFractionClosed (And.intro E.precipitatePinningClosed E.grainBoundaryEnergyClosed))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse
