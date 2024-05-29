
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/Q9UBS0.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/Q9UBS0.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [746,905,1644,1645,579,880,581,848,850,845,847,1561,1637,1634,1636,1638,1140,904,1639,1641,1643,744,745,1184,1533,1534,1535,1521,1522,1546,23,32,34,35,36,1642,1658,1661,1666,1667,1668,871,1659,1660,842,843,867,1562,1160,1157,1146,1014,555,562,563,598,600,583,588,601,761,582,573,575,576,577,801,10,1186,12,557,19,33,2811,2813,2815,544,547,728,550,553,2849,2851,549,2819,543,545] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1257,1258,1259,1279,1281,1314,1315,1269,1274,1283,1194,1220,1347,1217,2702,2704,2706,2694,2696] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1535,1536,1537,1526,1237,1199,1202,2058,1528,1820,2031,1822,1792,1805,1807,1810,2056,2030,2060,2071,2070,1226,1232,1233,1229,1264,1231,1,8,1239] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [23,50,27,32,34,48,1522,579,581,850,1667,1668,871,1785,1786,51,843] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        